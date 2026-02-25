#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rover_hosting_cache_notices_dismissed'
wp option delete 'roveridx_has_diverse_solutions'
wp option delete 'roveridx_dismissed_diverse_solutions'
wp option delete 'roveridx_db_version'
wp option delete 'roveridx_css_amp'

# Delete Transients
wp transient delete 'idx_plugin_updated'
wp transient delete 'roveridx_activation_error'
wp transient delete 'roveridx_activation_success'

# Clear Cron Jobs
wp cron event delete 'roveridx_cron_daily'
wp cron event delete 'roveridx_cron_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover_idx_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover_idx_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover_idx_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover_idx_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover_idx_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover_idx_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover_idx_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover_idx_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover_idx_side_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover_idx_side_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover_idx_side_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover_idx_side_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prev-parent-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prev-parent-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prev-parent-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prev-parent-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover-idx-migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover-idx-migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover-idx-migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover-idx-migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover-idx-mlnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover-idx-mlnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover-idx-mlnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover-idx-mlnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rover-idx-cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rover-idx-cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rover-idx-cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rover-idx-cat'"
