#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weblizar_wsio_options'
wp option delete 'weblizar_naf_options'
wp option delete 'wsio_nht_plugin_do_activation_redirect'

