export interface AssignmentPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    getLatestCover(): Promise<[string]>;
}
