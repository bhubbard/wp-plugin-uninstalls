#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'remotemonkey_options'
wp option delete 'remotemonkey_do_activation_redirect'
wp option delete 'bm_remotemonkey'
wp option delete 'akeebabackupwp_config'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

