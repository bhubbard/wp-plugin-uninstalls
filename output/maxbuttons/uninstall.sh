#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxbuttons_borderbox'
wp option delete 'maxbuttons_hidedescription'
wp option delete 'maxbuttons_autoresponsive'
wp option delete 'maxbuttons_autor_font'
wp option delete 'maxbuttons_autor_width'
wp option delete 'maxbuttons_pro_license_expires'
wp option delete 'maxbuttons_pro_license_activated'
wp option delete 'MBFREE_CREATED'
wp option delete 'MBFREE_HOMEURL'
wp option delete 'maxbuttons_protocol'
wp option delete 'maxbuttons_forcefa'
wp option delete 'maxbuttons_minify'
wp option delete 'maxbuttons_user_level'
wp option delete 'maxbuttons_noshowtinymce'
wp option delete 'maxbuttons_usecssfile'
wp option delete 'maxbuttons_pro_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maxbuttons_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maxbuttons_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maxbuttons_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maxbuttons_review_notice'"
