-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TIEexpire_pub', 'TIEexpire_catsradio', 'TIEtools_notify_poster', 'TIEtools_notify_admin', 'TIEtools_notify_other', 'TIEexpire_draft', 'TIEexpire_pending', 'TIEexpire_private', 'TIEtools_notify_email', 'TIEexpire_catsin', 'TIEexpire_catsout', 'TIEexpire_catsdays', 'TIEexpire_catsposts', 'TIEexpire_catsviews', 'TIEexpire_catslikes', 'TIEexpire_days', 'TIEexpire_posts', 'TIEexpire_viewdays', 'TIEexpire_views', 'TIEexpire_likedays', 'TIEexpire_likes');

