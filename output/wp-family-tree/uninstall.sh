#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'family_tree_category_key'
wp option delete 'family_tree_link'
wp option delete 'show_biodata_on_posts_page'
wp option delete 'family_tree_toolbar_blogpage'
wp option delete 'family_tree_toolbar_treenav'
wp option delete 'showcreditlink'
wp option delete 'bOneNamePerLine'
wp option delete 'bOnlyFirstName'
wp option delete 'bBirthAndDeathDates'
wp option delete 'bConcealLivingDates'
wp option delete 'bShowSpouse'
wp option delete 'bShowOneSpouse'
wp option delete 'bVerticalSpouses'
wp option delete 'bMaidenName'
wp option delete 'bShowGender'
wp option delete 'bDiagonalConnections'
wp option delete 'bRefocusOnClick'
wp option delete 'bShowToolbar'
wp option delete 'canvasbgcol'
wp option delete 'nodeoutlinecol'
wp option delete 'nodefillcol'
wp option delete 'nodefillopacity'
wp option delete 'nodetextcolour'
wp option delete 'nodecornerradius'
wp option delete 'nodeminwidth'
wp option delete 'generationheight'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'father'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'father'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'father'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'father'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mother'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mother'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mother'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mother'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spouse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'born'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'born'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'born'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'born'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'died'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'died'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'died'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'died'"
