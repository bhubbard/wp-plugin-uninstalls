#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esig_global_document_id'
wp option delete 'remove_rating_widget_gravity'
wp option delete 'WP_ESignature__Gravity Form_documentation'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esig-gf-wc-agreement%' OR option_name LIKE '_site_transient_esig-gf-wc-agreement%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esig-gf-redirect-%' OR option_name LIKE '_site_transient_esig-gf-redirect-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_esig-gf-agreement-created%' OR option_name LIKE '_site_transient_esig-gf-agreement-created%'"
wp transient delete '_esign_gravity_redirect'

