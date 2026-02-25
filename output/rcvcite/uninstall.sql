-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('test_some_id', 'citeChapters', 'hoverDelay', 'horzPad', 'looseContext', 'listInvalid', 'ignoreFilter');

