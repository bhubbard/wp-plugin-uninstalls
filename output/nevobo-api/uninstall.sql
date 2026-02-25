-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nvb_shortcode-text', 'nvb_table-maxrow', 'nvb_result-maxrow', 'nvb_fixture-maxrow');
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-vereniging';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-locatie';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-datumtijd';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-highlight';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-icon';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-style';
DELETE FROM wp_options WHERE option_name LIKE '%algemeen-htmlstyle';
DELETE FROM wp_options WHERE option_name LIKE '%table-maxname';
DELETE FROM wp_options WHERE option_name LIKE '%table-fixture';
DELETE FROM wp_options WHERE option_name LIKE '%table-sets';
DELETE FROM wp_options WHERE option_name LIKE '%fixture-location';
DELETE FROM wp_options WHERE option_name LIKE '%fixture-city';
DELETE FROM wp_options WHERE option_name LIKE '%fixture-ical';
DELETE FROM wp_options WHERE option_name LIKE '%fixture-route';
DELETE FROM wp_options WHERE option_name LIKE '%table-result';
DELETE FROM wp_options WHERE option_name LIKE '%result-sets';

