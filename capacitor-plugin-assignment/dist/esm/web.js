import { WebPlugin } from '@capacitor/core';
export class AssignmentWeb extends WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
    async getLatestCover() {
        throw this.unavailable('Share API not available in this browser');
    }
}
//# sourceMappingURL=web.js.map