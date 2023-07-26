var capacitorAssignment = (function (exports, core) {
    'use strict';

    const Assignment = core.registerPlugin('Assignment', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.AssignmentWeb()),
    });

    class AssignmentWeb extends core.WebPlugin {
        async echo(options) {
            console.log('ECHO', options);
            return options;
        }
        async getLatestCover() {
            throw this.unavailable('Share API not available in this browser');
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        AssignmentWeb: AssignmentWeb
    });

    exports.Assignment = Assignment;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
