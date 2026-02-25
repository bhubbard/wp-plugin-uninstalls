#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casinoGameAffiliatUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casinoGameAffiliatUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casinoGameAffiliatUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casinoGameAffiliatUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casinoGameBonusDisplayText'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casinoGameBonusDisplayText'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casinoGameBonusDisplayText'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casinoGameBonusDisplayText'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casinoGameEditorRating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casinoGameEditorRating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casinoGameEditorRating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casinoGameEditorRating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casinoGameFeatures'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casinoGameFeatures'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casinoGameFeatures'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casinoGameFeatures'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'casinoGameUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'casinoGameUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'casinoGameUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'casinoGameUrl'"
