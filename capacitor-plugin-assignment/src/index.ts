import { registerPlugin } from '@capacitor/core';

import type { AssignmentPlugin } from './definitions';

const Assignment = registerPlugin<AssignmentPlugin>('Assignment', {
  web: () => import('./web').then(m => new m.AssignmentWeb()),
});

export * from './definitions';
export { Assignment };
