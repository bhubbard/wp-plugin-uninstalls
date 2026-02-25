#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a2cp_image_field'
wp option delete 'a2cp_custom_field'
wp option delete 'a2cp_short_description'
wp option delete 'a2cp_custom_class'
wp option delete 'a2cp_out_of_stock'
wp option delete 'a2cp_default_text'
wp option delete 'a2cp_debug'
wp option delete 'a2cp_dom_check'
wp option delete 'a2cp_button_blocking'
wp option delete 'a2cp_delete_on_deactivation'
wp option delete 'a2cp_stop_refresh_frags'
wp option delete 'a2cp_after_add_text'
wp option delete 'a2cp_after_add_url'
wp option delete 'eaa2c_debug'
wp option delete 'active_sitewide_plugins'

