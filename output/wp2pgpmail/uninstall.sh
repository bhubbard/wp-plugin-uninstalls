#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2pgpmail_pgpkey_keyid'
wp option delete 'wp2pgpmail_pgpkey_pkey'
wp option delete 'wp2pgpmail_pgpkey_vers'
wp option delete 'wp2pgpmail_pgpkey_pktype'
wp option delete 'wp2pgpmail_pgpkey'
wp option delete 'wp2pgpmail_captcha_field'
wp option delete 'wp2pgpmail_collect_ip'
wp option delete 'wp2pgpmail_pgpkey_user'

