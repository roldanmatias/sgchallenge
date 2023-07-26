import { WebPlugin } from '@capacitor/core';

import type { AssignmentPlugin } from './definitions';

export class AssignmentWeb extends WebPlugin implements AssignmentPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async getLatestCover(): Promise<[string]> {
    throw this.unavailable('Share API not available in this browser');
  }
}
