#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fep_cf_to_field'
wp option delete 'FEPCF_admin_options'
wp option delete 'wordpress_api_key'
wp option delete 'fep_db_version'
wp option delete 'fep_meta_db_version'
wp option delete '_fep_used_nonces'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fep_cf_%' OR option_name LIKE '_site_transient_fep_cf_%'"
wp transient delete 'fepcf_page_id'

