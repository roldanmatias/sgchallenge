import { registerPlugin } from '@capacitor/core';
const Assignment = registerPlugin('Assignment', {
    web: () => import('./web').then(m => new m.AssignmentWeb()),
});
export * from './definitions';
export { Assignment };
//# sourceMappingURL=index.js.map