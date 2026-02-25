const Engine = require('php-parser');

const parser = new Engine({
    parser: { extractDoc: false, php7: true },
    ast: { withPositions: false }
});

const source = `<?php
    get_option('my_plugin_settings');
    register_setting('my_group', 'my_registered_option');
    update_option('my_prefix_' . $some_var, 'val');
    set_transient('cache_' . $id, 'data', 3600);
`;

const ast = parser.parseCode(source, 'test.php');
console.log(JSON.stringify(ast, null, 2));
