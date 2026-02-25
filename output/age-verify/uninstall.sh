#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_av_require_for'
wp option delete '_av_always_verify'
wp option delete '_av_minimum_age'
wp option delete '_av_cookie_duration'
wp option delete '_av_membership'
wp option delete '_av_heading'
wp option delete '_av_description'
wp option delete '_av_input_type'
wp option delete '_av_styling'
wp option delete '_av_overlay_color'
wp option delete '_av_bgcolor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_av_needs_verify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_av_needs_verify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_av_needs_verify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_av_needs_verify'"
