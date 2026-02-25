#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alquemie_audience_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alq_audience_division'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alq_audience_division'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alq_audience_division'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alq_audience_division'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alq_audience_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alq_audience_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alq_audience_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alq_audience_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alq_audience_buyerstage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alq_audience_buyerstage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alq_audience_buyerstage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alq_audience_buyerstage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alq_audience_audience1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alq_audience_audience1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alq_audience_audience1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alq_audience_audience1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alq_audience_audience2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alq_audience_audience2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alq_audience_audience2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alq_audience_audience2'"
