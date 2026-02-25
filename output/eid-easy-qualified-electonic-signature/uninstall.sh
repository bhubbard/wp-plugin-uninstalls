#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eideasy_test_mode'
wp option delete 'eideasy_client_id'
wp option delete 'eideasy_secret'
wp option delete 'eideasy_provider_signatures_enabled'
wp option delete 'eideasy_signature_redirect'
wp option delete 'eideasy_notify_email_subject'
wp option delete 'eideasy_notify_email_content'
wp option delete 'eideasy_notify_email_sender'
wp option delete 'eideasy_pending_provider_signatures'
wp option delete 'eideasy_provider_signatures_notify'
wp option delete 'eideasy_pending_provider_lock'
wp option delete 'eideasy_no_emails'
wp option delete 'eideasy_no_download'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eideasy_signing_state_%'"
wp option delete 'eideasy_notify_email_address'
wp option delete 'eideasy_include_doc_with_notify_email'
wp option delete 'eideasy_skip_signing_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eideasy_signing_url_%'"
wp option delete 'eideasy_cf7_user_email_field'
wp option delete 'eideasy_cf7_signed_forms'

