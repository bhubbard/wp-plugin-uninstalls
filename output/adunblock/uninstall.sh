#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adunblock_id'
wp option delete 'my_plugin_do_activation_redirect'

# Delete Transients
wp transient delete 'code_adunblock'
wp transient delete 'code_adunblock_lt'

