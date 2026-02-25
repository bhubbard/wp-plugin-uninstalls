-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttdvr_bulk_upload_message', 'ttdvr_bulk_upload_message_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ttdvr_verification_id', '_ttdvr_recipient_name', '_ttdvr_phone', '_ttdvr_email', '_ttdvr_date_of_birth', '_ttdvr_address', '_ttdvr_document_type', '_ttdvr_document_type_other', '_ttdvr_awarding_body', '_ttdvr_course_subject', '_ttdvr_grade', '_ttdvr_performance', '_ttdvr_issued_date', '_ttdvr_effective_until_date', '_ttdvr_document_pdf_url', '_ttdvr_course_details_remarks');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ttdvr_verification_id', '_ttdvr_recipient_name', '_ttdvr_phone', '_ttdvr_email', '_ttdvr_date_of_birth', '_ttdvr_address', '_ttdvr_document_type', '_ttdvr_document_type_other', '_ttdvr_awarding_body', '_ttdvr_course_subject', '_ttdvr_grade', '_ttdvr_performance', '_ttdvr_issued_date', '_ttdvr_effective_until_date', '_ttdvr_document_pdf_url', '_ttdvr_course_details_remarks');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ttdvr_verification_id', '_ttdvr_recipient_name', '_ttdvr_phone', '_ttdvr_email', '_ttdvr_date_of_birth', '_ttdvr_address', '_ttdvr_document_type', '_ttdvr_document_type_other', '_ttdvr_awarding_body', '_ttdvr_course_subject', '_ttdvr_grade', '_ttdvr_performance', '_ttdvr_issued_date', '_ttdvr_effective_until_date', '_ttdvr_document_pdf_url', '_ttdvr_course_details_remarks');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ttdvr_verification_id', '_ttdvr_recipient_name', '_ttdvr_phone', '_ttdvr_email', '_ttdvr_date_of_birth', '_ttdvr_address', '_ttdvr_document_type', '_ttdvr_document_type_other', '_ttdvr_awarding_body', '_ttdvr_course_subject', '_ttdvr_grade', '_ttdvr_performance', '_ttdvr_issued_date', '_ttdvr_effective_until_date', '_ttdvr_document_pdf_url', '_ttdvr_course_details_remarks');

