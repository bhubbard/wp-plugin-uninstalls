-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glossary_index_flush_rewrite_rules', 'glossary_index_redirect_on_activation', 'glossary_index_settings');

