-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplawyer_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplawyer_attorney_title', 'wplawyer_attorney_bar_number', 'wplawyer_attorney_address', 'wplawyer_attorney_email', 'wplawyer_attorney_mobile_number', 'wplawyer_attorney_fax_number', 'wplawyer_attorney_website', 'wplawyer_attorney_facebook', 'wplawyer_attorney_twitter', 'wplawyer_attorney_linkedin', 'wplawyer_attorney_youtube', 'wplawyer_case_verdict_price', 'wplawyer_case_plantiff', 'wplawyer_case_defendent');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplawyer_attorney_title', 'wplawyer_attorney_bar_number', 'wplawyer_attorney_address', 'wplawyer_attorney_email', 'wplawyer_attorney_mobile_number', 'wplawyer_attorney_fax_number', 'wplawyer_attorney_website', 'wplawyer_attorney_facebook', 'wplawyer_attorney_twitter', 'wplawyer_attorney_linkedin', 'wplawyer_attorney_youtube', 'wplawyer_case_verdict_price', 'wplawyer_case_plantiff', 'wplawyer_case_defendent');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplawyer_attorney_title', 'wplawyer_attorney_bar_number', 'wplawyer_attorney_address', 'wplawyer_attorney_email', 'wplawyer_attorney_mobile_number', 'wplawyer_attorney_fax_number', 'wplawyer_attorney_website', 'wplawyer_attorney_facebook', 'wplawyer_attorney_twitter', 'wplawyer_attorney_linkedin', 'wplawyer_attorney_youtube', 'wplawyer_case_verdict_price', 'wplawyer_case_plantiff', 'wplawyer_case_defendent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplawyer_attorney_title', 'wplawyer_attorney_bar_number', 'wplawyer_attorney_address', 'wplawyer_attorney_email', 'wplawyer_attorney_mobile_number', 'wplawyer_attorney_fax_number', 'wplawyer_attorney_website', 'wplawyer_attorney_facebook', 'wplawyer_attorney_twitter', 'wplawyer_attorney_linkedin', 'wplawyer_attorney_youtube', 'wplawyer_case_verdict_price', 'wplawyer_case_plantiff', 'wplawyer_case_defendent');

