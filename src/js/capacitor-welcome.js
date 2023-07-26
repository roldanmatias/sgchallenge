import { SplashScreen } from '@capacitor/splash-screen';
import { Camera } from '@capacitor/camera';

import { registerPlugin } from '@capacitor/core';

const Assignment = registerPlugin('Assignment');

export default Assignment;

const covers = Assignment.getLatestCover();

window.customElements.define(
  'capacitor-welcome',
  class extends HTMLElement {
    constructor() {
      super();

      SplashScreen.hide();

      const root = this.attachShadow({ mode: 'open' });

      root.innerHTML = `
    <style>
      :host {
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        display: block;
        width: 100%;
        height: 100%;
      }
      h1, h2, h3, h4, h5 {
        text-transform: uppercase;
      }
      .button {
        display: inline-block;
        padding: 10px;
        background-color: #73B5F6;
        color: #fff;
        font-size: 0.9em;
        border: 0;
        border-radius: 3px;
        text-decoration: none;
        cursor: pointer;
      }
      main {
        padding: 15px;
      }
      main hr { height: 1px; background-color: #eee; border: 0; }
      main h1 {
        font-size: 1.4em;
        text-transform: uppercase;
        letter-spacing: 1px;
      }
      main h2 {
        font-size: 1.1em;
      }
      main h3 {
        font-size: 0.9em;
      }
      main p {
        color: #333;
      }
      main pre {
        white-space: pre-line;
      }
    </style>
    <div>
      <main>
      <br><br><br>
        <h2>Native Mobile Developer Assignment</h2>
        <p>
          Tap button to request covers using custom plugin and show first cover image
        </p>
        <p>
          Check log to see all api response data.
        </p>
        <p>
          <button class="button" id="requestCovers">Request covers</button>
        </p>
        <p>
          <img id="image" style="max-width: 100%">
        </p>
      </main>
    </div>
    `;
    }

    connectedCallback() {
      const self = this;

      self.shadowRoot.querySelector('#requestCovers').addEventListener('click', async function (e) {
        try {
          const coverList = await covers;
          
          console.log(coverList.value);

          const image = self.shadowRoot.querySelector('#image');

          if (!image) {
            return;
          }
          
          image.src = coverList.value[0];
          
        } catch (err) {
          console.log(err);
        }

      });
    }
  }
);
