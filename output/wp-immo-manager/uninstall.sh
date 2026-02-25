#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpi_upload_url'
wp option delete 'wpi_single_view'
wp option delete 'wpi_pro'
wp option delete 'wpi_search_page'
wp option delete 'wpi_custom_css'
wp option delete 'wpi_bootstrap_styles'
wp option delete 'wpi_admin'
wp option delete 'wpi_licence'
wp option delete 'wpi_standard'
wp option delete 'wpi_xml_pfad'
wp option delete 'wpi_upload_pfad'
wp option delete 'wpi_post_type_slug'
wp option delete 'wpi_place_to_title'
wp option delete 'wpi_single_preise'
wp option delete 'wpi_single_flaechen'
wp option delete 'wpi_single_epass'
wp option delete 'wpi_custom_html'
wp option delete 'wpi_html_inject'
wp option delete 'wpi_img_platzhalter'
wp option delete 'wpi_show_top_immo'
wp option delete 'wpi_top_immo_source'
wp option delete 'wpi_show_reserved'
wp option delete 'wpi_reserved_text'
wp option delete 'wpi_show_sold'
wp option delete 'wpi_sold_text'
wp option delete 'wpi_single_ausstattung'
wp option delete 'wpi_single_view_tabs'
wp option delete 'wpi_smartnav'
wp option delete 'wpi_shedule_time'
wp option delete 'wpi_list_options'
wp option delete 'wpi_list_options[wpi_list_view_column]'
wp option delete 'wpi_rented_text'
wp option delete 'wpi_single_hardfacts'
wp option delete 'wpi_single_contacts'
wp option delete 'wpi_list_excerpt'
wp option delete 'wpi_list_excerpt_length'
wp option delete 'wpi_list_detail'
wp option delete 'wpi_list_view_column'
wp option delete 'wpi_list_sidebar'
wp option delete 'wpi_list_sidebar_name'
wp option delete 'wpi_single_onePage'
wp option delete 'wpi_single_sidebarPage_titles'
wp option delete 'wpi_single_sidebar'
wp option delete 'wpi_single_sidebar_name'
wp option delete 'wpi_slider'
wp option delete 'wpi_avatar'
wp option delete 'wpi_show_smartnav'
wp option delete 'wpi_show_article_navigation'

# Clear Cron Jobs
wp cron event delete 'wpi_time_event'
wp cron event delete 'wpi_check_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reserved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reserved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reserved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reserved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'topimmo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'topimmo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'topimmo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'topimmo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geodaten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geodaten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geodaten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geodaten'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Beschreibung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Beschreibung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Beschreibung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Beschreibung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Lage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Lage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Lage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Lage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Ausstattung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Ausstattung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Ausstattung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Ausstattung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'HeizkostenInWarmmieteEnthalten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'HeizkostenInWarmmieteEnthalten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'HeizkostenInWarmmieteEnthalten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'HeizkostenInWarmmieteEnthalten'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nebenkosten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nebenkosten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nebenkosten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nebenkosten'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Kaution'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Kaution'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Kaution'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Kaution'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Warmmiete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Warmmiete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Warmmiete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Warmmiete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Kaltmiete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Kaltmiete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Kaltmiete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Kaltmiete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BefeuerungsArt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BefeuerungsArt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BefeuerungsArt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BefeuerungsArt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kontakt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kontakt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kontakt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kontakt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zeige_adresse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zeige_adresse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zeige_adresse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zeige_adresse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'strasse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'strasse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'strasse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'strasse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ort'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ort'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ort'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ort'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Zimmer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Zimmer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Zimmer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Zimmer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'AnzahlSchlafzimmer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'AnzahlSchlafzimmer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'AnzahlSchlafzimmer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'AnzahlSchlafzimmer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'AnzahlBadezimmer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'AnzahlBadezimmer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'AnzahlBadezimmer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'AnzahlBadezimmer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Wohnflaeche'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Wohnflaeche'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Wohnflaeche'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Wohnflaeche'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Nutzflaeche'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Nutzflaeche'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Nutzflaeche'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Nutzflaeche'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Etage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Etage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Etage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Etage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Etagenzahl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Etagenzahl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Etagenzahl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Etagenzahl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WohnungKategorie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WohnungKategorie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WohnungKategorie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WohnungKategorie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FreiAb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FreiAb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FreiAb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FreiAb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Ausstattungsqualitaet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Ausstattungsqualitaet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Ausstattungsqualitaet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Ausstattungsqualitaet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GaesteWC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GaesteWC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GaesteWC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GaesteWC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Gartenbenutzung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Gartenbenutzung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Gartenbenutzung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Gartenbenutzung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BetreutesWohnen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BetreutesWohnen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BetreutesWohnen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BetreutesWohnen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Foerderung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Foerderung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Foerderung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Foerderung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Rollstuhlgerecht'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Rollstuhlgerecht'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Rollstuhlgerecht'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Rollstuhlgerecht'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Einbaukueche'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Einbaukueche'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Einbaukueche'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Einbaukueche'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Provisionspflichtig'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Provisionspflichtig'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Provisionspflichtig'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Provisionspflichtig'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Objektzustand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Objektzustand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Objektzustand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Objektzustand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Barrierefrei'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Barrierefrei'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Barrierefrei'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Barrierefrei'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Provisionshinweis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Provisionshinweis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Provisionshinweis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Provisionshinweis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Provision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Provision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Provision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Provision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Keller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Keller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Keller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Keller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BalkonTerrasse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BalkonTerrasse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BalkonTerrasse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BalkonTerrasse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Haustiere'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Haustiere'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Haustiere'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Haustiere'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Aufzug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Aufzug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Aufzug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Aufzug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Bilder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Bilder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Bilder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Bilder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpi_objectnr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpi_objectnr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpi_objectnr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpi_objectnr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anbieterkennung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anbieterkennung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anbieterkennung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anbieterkennung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anbieterfirma'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anbieterfirma'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anbieterfirma'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anbieterfirma'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'objektkategorie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'objektkategorie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'objektkategorie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'objektkategorie'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kontaktperson'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kontaktperson'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kontaktperson'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kontaktperson'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preise'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flaechen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flaechen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flaechen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flaechen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ausstattung'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ausstattung'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ausstattung'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ausstattung'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zustand_angaben'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zustand_angaben'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zustand_angaben'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zustand_angaben'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'anhaenge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'anhaenge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'anhaenge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'anhaenge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freitexte'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freitexte'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freitexte'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freitexte'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verwaltung_objekt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verwaltung_objekt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verwaltung_objekt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verwaltung_objekt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verwaltung_techn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verwaltung_techn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verwaltung_techn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verwaltung_techn'"
