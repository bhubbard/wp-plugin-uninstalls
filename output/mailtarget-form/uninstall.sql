-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtg_api_token', 'mtg_company_id', 'mtg_popup_form_id', 'mtg_popup_delay', 'mtg_popup_enable', 'mtg_popup_form_name', 'mtg_popup_title', 'mtg_popup_description', 'mtg_popup_submit', 'mtg_popup_redirect');

