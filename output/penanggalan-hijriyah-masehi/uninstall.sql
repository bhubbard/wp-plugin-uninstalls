-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PHM_hijrday', 'PHM_hijrmonth', 'PHM_masehiday', 'PHM_masehimonth', 'PHM_style', 'PHM_adjust', 'PHM_separator');

