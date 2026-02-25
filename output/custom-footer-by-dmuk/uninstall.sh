#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmuk_foot_nominated_page'
wp option delete 'dmuk_foot_expected_theme'
wp option delete 'dmuk_foot_theme_change_dismissed'
wp option delete 'dmuk_foot_analysis_string'
wp option delete 'dmuk_foot_search_replace_target_id'
wp option delete 'dmuk_foot_search_replace_activate'

