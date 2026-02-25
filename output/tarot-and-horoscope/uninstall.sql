-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tarotxhoroscope_chatbox_settings', 'tarotxhoroscope_daily_tarot_settings', 'tarotxhoroscope_aries_attachment_id', 'tarotxhoroscope_horoscope_settings', 'tarotxhoroscope_one_card_settings', 'tarotxhoroscope_three_card_settings', 'tarotxhoroscope_api_key', 'tarotxhoroscope_domain', 'tarotxhoroscope_remove_data_on_uninstall', 'tarotxhoroscope_redirect_to_settings');

