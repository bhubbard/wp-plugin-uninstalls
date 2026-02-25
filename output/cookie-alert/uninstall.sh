#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookiealert_attivo'
wp option delete 'cookiealert_testo'
wp option delete 'cookiealert_informativa'
wp option delete 'cookiealert_link'
wp option delete 'cookiealert_testobottone'
wp option delete 'cookiealert_colorebottone'
wp option delete 'cookiealert_posizione'

