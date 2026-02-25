-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sya_dateformatchanged2012', 'sya_dateformatchanged2015', 'sya_dateformat', 'sya_datetitleseperator', 'sya_linkyears', 'sya_collapseyears', 'sya_postcount', 'sya_commentcount', 'sya_linktoauthor', 'sya_reverseorder', 'sya_prepend', 'sya_append', 'sya_excerpt', 'sya_excerpt_indent', 'sya_excerpt_maxchars', 'sya_show_categories', 'sya_show_tags', 'sya_showauthor', 'sya_showyearoverview', 'sya_showpostthumbnail', 'sya_postthumbnail_size');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

