---
title: Secondary DNS with Dyn
excerpt: Secondary DNS can be complicated to set up. We've simplified things with provider specific settings for Dyn.
categories:
- Secondary DNS
---

# Secondary DNS configuration with Dyn Standard or Dyn Managed

For an overview of Secondary DNS, have a look at [our introduction article](/articles/secondary-dns).

## Requirements

* An active account with [Dyn](http://dyn.com/). Your secondary DNS Setup will vary depending on whether you use _Dyn Standard_ or _Dyn Managed DNS_ service.
* Your domain [is pointing to the DNSimple nameservers](/articles/pointing-domain-to-dnsimple)

Getting started with Secondary DNS is possible from the DNS section of the domain management page.

![DNS management page](/files/setup-secondary-dns.jpg)

## Setting up for Dyn Standard

First you will need to set up secondary DNS at Dyn. Instructions for setting up Secondary DNS using Dyn Standard may be found in the [Dyn help site](https://help.dyn.com/standard-dns/dyn-secondary-dns-information/). When you set up your Secondary DNS configuration in Dyn, they will provide you with a list of name server names in the format `nsx.mydyndns.org` or `nsxxxx.dns.dyn.com`. You will need to enter these names when you enable your secondary DNS with us.

You may also want to wait an hour or two before enabling your secondary DNS in DNSimple as this will give Dyn time to deploy the configuration for secondary DNS on our side.

From DNSimple, select **Dyn Standard** as the provider and click *Enable* at the bottom of the form. The IP addresses that Dyn is expecting are already filled in for you, but you will need to fill in the name servers using the name server names Dyn provided to you when you enabled Secondary DNS on their side.

![DNSimple configuration with Dyn Standard](/files/dyn-standard-enabling.png)

A confirmation message will tell you that Secondary DNS has been enabled from the DNSimple side.

![DNSimple configuration is successful](/files/secondary-dns-confirmation-message.png)

Congratulations, your secondary DNS should now be set up with **Dyn Standard**.

## Setting up for Dyn Managed

First you will need to set up secondary DNS at Dyn. Instructions for setting up Secondary DNS using Dyn Managed DNS may be found in the [Dyn help site](https://help.dyn.com/creating-a-secondary-zone/). When you set up your Secondary DNS configuration in Dyn, they will provide you with a list of name server names in the format `nsx.mydyndns.org` or `nsxxxx.dns.dyn.com`. You will need to enter these names when you enable your secondary DNS with us.

You may also want to wait an hour or two before enabling your secondary DNS in DNSimple as this will give Dyn time to deploy the configuration for secondary DNS on our side.

From DNSimple, select **Dyn Managed** as the provider and click *Enable* at the bottom of the form. The IP addresses that Dyn is expecting are already filled in for you, but you will need to fill in the name servers using the name server names Dyn provided to you when you enabled Secondary DNS on their side.

![DNSimple configuration with Dyn Managed](/files/dyn-managed-enabling.png)

A confirmation message will tell you that Secondary DNS has been enabled from the DNSimple side.

![DNSimple configuration is successful](/files/secondary-dns-confirmation-message.png)

Congratulations, your secondary DNS should now be set up with **Dyn Managed**.
