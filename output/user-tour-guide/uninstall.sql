-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utg_tour_option', 'start_immidiately', 'auto_start_for_new_user', 'show_begin_tour', 'show_dots', 'show_close_button', 'show_prev_button', 'show_next_button', 'show_step_progress', 'enable_keyboard_control', 'exit_on_escape', 'exit_on_click_outside', 'utgk_plugin_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('utg_admin_tour', 'utgk_plugin_review_dismissed', 'utgk_plugin_review_later', 'utgk_plugin_review_later_time', 'complete_or_skip_tour');
DELETE FROM wp_usermeta WHERE meta_key IN ('utg_admin_tour', 'utgk_plugin_review_dismissed', 'utgk_plugin_review_later', 'utgk_plugin_review_later_time', 'complete_or_skip_tour');
DELETE FROM wp_termmeta WHERE meta_key IN ('utg_admin_tour', 'utgk_plugin_review_dismissed', 'utgk_plugin_review_later', 'utgk_plugin_review_later_time', 'complete_or_skip_tour');
DELETE FROM wp_commentmeta WHERE meta_key IN ('utg_admin_tour', 'utgk_plugin_review_dismissed', 'utgk_plugin_review_later', 'utgk_plugin_review_later_time', 'complete_or_skip_tour');

