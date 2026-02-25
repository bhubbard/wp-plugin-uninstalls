-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ga_events_options', 'GA_EVENTS_version', 'ga_events_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpgae_whatsnew_ignore_notice', 'ga_events_review_dismiss');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpgae_whatsnew_ignore_notice', 'ga_events_review_dismiss');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpgae_whatsnew_ignore_notice', 'ga_events_review_dismiss');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpgae_whatsnew_ignore_notice', 'ga_events_review_dismiss');

