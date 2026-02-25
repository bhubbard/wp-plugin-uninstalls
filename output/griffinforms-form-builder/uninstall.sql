-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('griffinforms_db_migrations_version', 'griffinforms_lifetime_submission_count_backfilled', 'griffinforms_form_element_form_id_backfilled', 'griffinforms_form_element_form_id_backfill_last_id', 'griffinforms_activation_redirect');

