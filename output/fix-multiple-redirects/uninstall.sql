-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('canonical_filters_to_remove', 'template_redirect_filters_to_remove', 'FIXMTPLREDIR_promote', 'isDebug', 'rewrite_rules_filters_to_remove');

