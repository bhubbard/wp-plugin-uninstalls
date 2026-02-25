-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlwfq-archive-accordion', 'dlwfq-archive-title', 'dlwfq-total-posts-on-archive-page', 'dlwfq-archive-options-slug', 'dlwfq-plugin-v', 'dlwfq_faqizer_activated');

