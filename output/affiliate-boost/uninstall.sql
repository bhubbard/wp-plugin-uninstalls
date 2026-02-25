-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abpdotes_delay', 'abpdotes_session_lifetime', 'abpdotes_event_trigger', 'abpdotes_onoff', 'abpdotes_exclude_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affiliate_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('affiliate_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('affiliate_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affiliate_link');

