import { WebPlugin } from '@capacitor/core';
import type { AssignmentPlugin } from './definitions';
export declare class AssignmentWeb extends WebPlugin implements AssignmentPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    getLatestCover(): Promise<[string]>;
}
