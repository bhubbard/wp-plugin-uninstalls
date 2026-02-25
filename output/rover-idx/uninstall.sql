-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rover_hosting_cache_notices_dismissed', 'roveridx_has_diverse_solutions', 'roveridx_dismissed_diverse_solutions', 'roveridx_db_version', 'roveridx_css_amp', 'idx_plugin_updated', 'roveridx_activation_error', 'roveridx_activation_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rover_idx_page_title', 'rover_idx_desc', 'rover_idx_side_desc', 'prev-parent-id', 'rover-idx-migrated', 'rover_guid', '_genesis_layout', '_layout', 'rover-idx-mlnumber', 'rover-idx-cat');
DELETE FROM wp_usermeta WHERE meta_key IN ('rover_idx_page_title', 'rover_idx_desc', 'rover_idx_side_desc', 'prev-parent-id', 'rover-idx-migrated', 'rover_guid', '_genesis_layout', '_layout', 'rover-idx-mlnumber', 'rover-idx-cat');
DELETE FROM wp_termmeta WHERE meta_key IN ('rover_idx_page_title', 'rover_idx_desc', 'rover_idx_side_desc', 'prev-parent-id', 'rover-idx-migrated', 'rover_guid', '_genesis_layout', '_layout', 'rover-idx-mlnumber', 'rover-idx-cat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rover_idx_page_title', 'rover_idx_desc', 'rover_idx_side_desc', 'prev-parent-id', 'rover-idx-migrated', 'rover_guid', '_genesis_layout', '_layout', 'rover-idx-mlnumber', 'rover-idx-cat');

