-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deal_or_announcement_with_countdown_timer_timer_color', 'deal_or_announcement_with_countdown_timer_text_color', 'deal_or_announcement_with_countdown_timer_text_align', 'deal_or_announcement_with_countdown_timer_caption', 'deal_or_announcement_with_countdown_timer_timer_align', 'deal_or_announcement_with_countdown_timer_title');

