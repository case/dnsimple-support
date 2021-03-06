---
title: Renewing an SSL Certificate
excerpt: Instructions to renew an SSL certificate for a domain with DNSimple.
categories:
- SSL Certificates
---

# Renewing an SSL Certificate

### Table of Contents {#toc}

* TOC
{:toc}

---

DNSimple provides an SSL certificate renewal interface you can use to purchase a renewal for an SSL certificate. Please note that [an SSL certificate renewal is effectively a new SSL certificate purchase](/articles/how-certificate-renewal-works).

All DNSimple SSL certificates, including renewals, are valid for one year from their issue date. Sixty days before the certificate expires you will begin receiving renewal notices.


# Steps

These are the steps required in order to successfully renew an existing SSL certificate:

1. [Purchase the SSL certificate renewal](#order)
1. Configure and submit the new SSL certificate
1. Validate and approve the new SSL certificate
1. Download the new SSL certificate and **replace the existing certificate on the server**


## Renewing an SSL certificate {#order}

<note>
A renewal will not extend your existing certificate expiration date, it will result in a brand new certificate that must be installed in place of the existing one. Both certificate and private key must be replaced on the server.

There is no way to extend the expiration of an existing certificate &mdash; [Learn more](/articles/how-certificate-renewal-works)
</note>

<div class="section-steps" markdown="1">
##### To renew a certificate

1.  Log into your DNSimple account.
1.  On the top-nav menu click the <label>Domains</label> tab, locate the relevant domain and click on the name to access the domain page.
1.  Scroll down to the <label>SSL certificates</label> section and find the active SSL certificate. Click <label>Renew</label> to start the renewal.

    ![Renewing a Certificate](/files/certificates-renew-action.png)

    If you can't see the <label>Renew</label> button, the certificate is either expired or not in a state that allows a renewal.

1.  Follow the instructions to purchase the certificate renewal.

    1.  Check the certificate [common name](/articles/what-is-common-name) matches the one you want to renew.
    1.  Change the number of years if you want to purchase a certificate for more than 1 year. The [multi-year SSL certificate](/articles/can-multi-year-ssl-certificates) feature is only available to new plans.
    1.  Leave the CSR option unchecked, unless you really need to provide a [custom CSR](/articles/what-is-csr). The easiest thing to do is to have us automatically generate the CSR (and a new private key to go with it).
    1.  Submit the order.

    ![Renew a Certificate](/files/dnsimple-certificate-renewal.png)

</div>


## What's next?

Once you purchased the certificate renewal, **you will have to go through the steps of configuring, verifying and installing the certificate in order to receive the certificate**. If we generated the CSR for you, each certificate has a different private key therefore you will also need to replace the private key.

These are the same steps you followed after you purchased your original certificate. See [getting started with SSL certificates](/articles/getting-started-ssl-certificates).

You will need to [verify the SSL certificate order](/articles/ssl-certificates-email-validation) again, since a new certificate will be issued.

<warning>
**If you don't verify the certificate, the renewal is not completed** and browsers will display a security warning when the old certificate expires.
</warning>

You may have more than 1 certificate for a host name at DNSimple at the same time, so renewing your certificate prior to the expiration date of your current certificate will not affect your operations. Note, however, that you will only be able to install 1 certificate on your server at a time.


## New certificate expiration

### Standard certificates

If a certificate is renewed within 60 days from the expiration date, the expiration date of the renewed certificate will be calculated from the expiration of the existing certificate. Therefore, you will not lose any paid days from the previous certificate.

We encourage you to plan the renewal of your certificate at least one week before the expiration, to avoid downtime or issues caused by possible renewal delays.

### Let's Encrypt certificates

The expiration of a Let's Encrypt certificate will be 90 days, from the issuance of the certificate, regardless it's a new purchase or a renewal.
