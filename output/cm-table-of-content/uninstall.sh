#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'cmtoc_options'
wp option delete 'cmtoc_table_of_contentsOnlySingle'
wp option delete 'cmtoc_table_of_contentOnMainQuery'
wp option delete 'cmtoc_table_of_contentsHeaderDescription'
wp option delete 'cmtoc_table_of_contentsLevel0Tag'
wp option delete 'cmtoc_table_of_contentsLevel0Class'
wp option delete 'cmtoc_table_of_contentsLevel0Id'
wp option delete 'cmtoc_table_of_contentsLevel1Tag'
wp option delete 'cmtoc_table_of_contentsLevel1Class'
wp option delete 'cmtoc_table_of_contentsLevel1Id'
wp option delete 'cmtoc_table_of_contentsLevel2Tag'
wp option delete 'cmtoc_table_of_contentsLevel2Class'
wp option delete 'cmtoc_table_of_contentsLevel2Id'
wp option delete 'cmtoc_table_of_contentsLevel3Tag'
wp option delete 'cmtoc_table_of_contentsLevel3Class'
wp option delete 'cmtoc_table_of_contentsLevel3Id'
wp option delete 'cmtoc_table_of_contentsLevel4Tag'
wp option delete 'cmtoc_table_of_contentsLevel4Class'
wp option delete 'cmtoc_table_of_contentsLevel4Id'
wp option delete 'cmtoc_table_of_contentsLevel5Tag'
wp option delete 'cmtoc_table_of_contentsLevel5Class'
wp option delete 'cmtoc_table_of_contentsLevel5Id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_table_of_content_disable_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_table_of_content_disable_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_table_of_content_disable_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_table_of_content_disable_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_table_of_content_disable_table_of_content_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_table_of_content_disable_table_of_content_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_table_of_content_disable_table_of_content_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_table_of_content_disable_table_of_content_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_table_of_content_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_table_of_content_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_table_of_content_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_table_of_content_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmtoc_use_custom_selectors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmtoc_use_custom_selectors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmtoc_use_custom_selectors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmtoc_use_custom_selectors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmtoc_custom_selectors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmtoc_custom_selectors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmtoc_custom_selectors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmtoc_custom_selectors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_table_of_content_auto_shortcode_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_table_of_content_auto_shortcode_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_table_of_content_auto_shortcode_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_table_of_content_auto_shortcode_disable'"
