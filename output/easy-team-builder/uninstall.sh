#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etb_plugin_do_activation_redirect'
wp option delete 'etb_textBgColor'
wp option delete 'etb_textColor'
wp option delete 'etb_socialColor'
wp option delete 'etb_socialHover'
wp option delete 'etb_titleFontSize'
wp option delete 'etb_titleColor'
wp option delete 'etb_designationFontSize'
wp option delete 'etb_designationColor'
wp option delete 'etb_contentFontSize'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'our-team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'our-team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'our-team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'our-team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ttLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ttLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ttLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ttLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'githLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'githLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'githLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'githLink'"
