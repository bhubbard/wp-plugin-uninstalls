-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lipsum_wli', 'libw_activation_date', 'my-setting', 'lipsum_wli_paragraphs', 'lipsum_wli_length', 'lipsum_wli_pt', 'lipsum_wli_decorate', 'lipsum_wli_links', 'lipsum_wli_ul', 'lipsum_wli_ol', 'lipsum_wli_dl', 'lipsum_wli_bq', 'lipsum_wli_code', 'lipsum_wli_headers', 'lipsum_wli_ac', 'lipsum_wli_pr');

