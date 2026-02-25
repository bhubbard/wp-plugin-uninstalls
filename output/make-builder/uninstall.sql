-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('make-dismissed-notices', 'ttfmake-dismissed-notices', '_ttfmake_layout', '_ttfmake-use-builder', '_ttfmake-section-ids', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('make-dismissed-notices', 'ttfmake-dismissed-notices', '_ttfmake_layout', '_ttfmake-use-builder', '_ttfmake-section-ids', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('make-dismissed-notices', 'ttfmake-dismissed-notices', '_ttfmake_layout', '_ttfmake-use-builder', '_ttfmake-section-ids', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('make-dismissed-notices', 'ttfmake-dismissed-notices', '_ttfmake_layout', '_ttfmake-use-builder', '_ttfmake-section-ids', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ttfmake_section_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ttfmake_section_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ttfmake_section_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ttfmake_section_%';

