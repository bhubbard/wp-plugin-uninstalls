#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alphagf_installed'
wp option delete 'alphagf_version'
wp option delete 'gravityformsaddon_alphagf_google_calendar_settings'
wp option delete 'alphagf_gc_calender_list'
wp option delete 'alphagf_gc_auth_verified'
wp option delete 'alphagf_gc_auth_account'
wp option delete 'alphagf_gc_token_data'
wp option delete 'gravityformsaddon_alphagf_google_sheet_settings'
wp option delete 'alphagf_gs_sheet_list'
wp option delete 'alphagf_gs_auth_verified'
wp option delete 'alphagf_gs_auth_account'
wp option delete 'alphagf_gs_token_data'
wp option delete 'alphagf_gs_sheet_names'

# Delete Transients
wp transient delete 'alphagf_gs_sheet_headers'

