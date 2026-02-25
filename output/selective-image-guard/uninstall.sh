#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'eos_sig_license_key'
wp option delete 'eos_sig_bulk'
wp option delete 'eos_sig_woo_gallery'
wp option delete 'eos_sig_post_types'
wp option delete 'eos_sig_post_types_all'
wp option delete 'eos_sig_watermark'
wp option delete 'eos_sig_watermark_text'
wp option delete 'eos_sig_hard_watermark'
wp option delete 'eos_sig_license_status'
wp option delete 'eos_sig_watermark_device'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_sig_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_sig_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_sig_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_sig_protection'"
