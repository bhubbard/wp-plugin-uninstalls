#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%'"
wp option delete 'ninja_forms_addons_feed'
wp option delete 'yeemail_wpforms_setup'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yeekit_addons_%' OR option_name LIKE '_site_transient_yeekit_addons_%'"
wp transient delete 'yeekit_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeemail_wpforms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeemail_wpforms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeemail_wpforms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeemail_wpforms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_type'"
