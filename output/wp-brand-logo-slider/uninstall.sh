#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbls_border'
wp option delete 'wpbls_border_color'
wp option delete 'wpbls_border_radius'
wp option delete 'wpbls_order'
wp option delete 'wpbls_bg_color'
wp option delete 'wpbls_auto_play'
wp option delete 'wpbls_visible_items'
wp option delete 'wpbls_item_scrol'
wp option delete 'wpbls_puse_hover'
wp option delete 'wpbls_plugin_do_activation_redirect'

