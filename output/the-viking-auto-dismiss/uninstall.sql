-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viking_auto_dismiss_site_id', 'viking_auto_dismiss_enabled', 'viking_auto_dismiss_review_dismissed', 'viking_auto_dismiss_review_submitted', 'viking_auto_dismiss_review_next_show', 'viking_auto_dismiss_review_maybe_later_count', 'viking_auto_dismiss_disable_welcome', 'viking_auto_dismiss_review_last_shown');

