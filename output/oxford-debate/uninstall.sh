#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invalid_date'
wp option delete 'invalid_postures'
wp option delete 'purchased'
wp option delete 'key'
wp option delete 'oxd_votes'
wp option delete 'twitter-option'
wp option delete 'facebook-option'
wp option delete 'email-option'
wp option delete 'linkedin-option'
wp option delete 'telegram-option'
wp option delete 'whatsapp-option'
wp option delete 'global_posture_colour_a'
wp option delete 'global_posture_colour_b'
wp option delete 'oxd_colour'
wp option delete 'oxd_bootstrap'
wp option delete 'oxd_fluid'

# Delete Transients
wp transient delete 'oxd_activation_notice_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'initduration-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'initduration-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'initduration-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'initduration-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'endduration-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'endduration-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'endduration-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'endduration-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posturea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posturea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posturea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posturea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postureb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postureb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postureb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postureb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posture_colour_a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posture_colour_a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posture_colour_a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posture_colour_a'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posture_colour_b'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posture_colour_b'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posture_colour_b'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posture_colour_b'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'votea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'votea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'votea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'votea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voteb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voteb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voteb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voteb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posture_colour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posture_colour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posture_colour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posture_colour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posture_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posture_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posture_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posture_type'"
