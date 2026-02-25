-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weecomments_options', 'weecomments_langconf', 'weecomments_configuration');

