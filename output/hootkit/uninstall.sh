#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hootkit-dismiss-review'
wp option delete 'hootkit-activate'
wp option delete 'hootkit_adminsettings_footer'
wp option delete 'hootkit-activemods'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customcode'"
wp option delete 'hootkit_customcode_disablesafemode'
wp option delete 'hootkitimport_wc_flush'
wp option delete 'hootkitimport_mflogs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'newsletter_show_welcome'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp transient delete 'hootkitimport_freshpack'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hootkitimport_idsmap_widgets_%' OR option_name LIKE '_site_transient_hootkitimport_idsmap_widgets_%'"
wp transient delete '_mappress_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hootkitimport_idsmap_%' OR option_name LIKE '_site_transient_hootkitimport_idsmap_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hootkitimport_idsmap_wc_%' OR option_name LIKE '_site_transient_hootkitimport_idsmap_wc_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hootkitimport'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hootkitimport'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hootkitimport'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hootkitimport'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu-item-hybridextend_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu-item-hybridextend_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu-item-hybridextend_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu-item-hybridextend_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu-item-hoot_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu-item-hoot_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu-item-hoot_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu-item-hoot_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu-item-hootmenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu-item-hootmenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu-item-hootmenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu-item-hootmenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
