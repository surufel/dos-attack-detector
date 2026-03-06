🇺🇸 [English](#syn-flood-detector) | 🇧🇷 [Português](#detector-de-syn-flood)

---

# SYN Flood Detector

A Bash script for real-time SYN Flood attack detection.

## Overview

SYN Flood is a type of DoS (Denial of Service) attack that exploits the three-way handshake. The attacker sends a high volume of SYN packets but never completes the handshake, leaving the server with multiple half-open connections in `SYN_RECV` state until its resources are exhausted.

This script continuously monitors the number of `SYN_RECV` connections and triggers an alert when the threshold is exceeded.

## Dependencies

- `ss` (`iproute2`, available by default on most distros)

## Configuration

| Variable | Default | Description |
|---|---|---|
| `THRESHOLD` | `20` | SYN_RECV count to trigger an alert |
| `COOLDOWN` | `2` | Seconds between each check |
| `LOG_FILE` | `/var/log/dos-detection.log` | Log output path |

## Usage

```bash
sudo ./synflood-monitor.sh
```

## Limitations

- Does not automatically block IPs for now.

---
---

# Detector de SYN Flood

Script Bash para detecção em tempo real de ataques SYN Flood.

## Visão Geral

SYN Flood é um tipo de ataque DoS (Negação de Serviço) que explora o three-way handshake. O atacante envia um alto volume de pacotes SYN mas nunca conclui o handshake, deixando o servidor com múltiplas conexões semi-abertas no estado `SYN_RECV` até esgotar seus recursos.

Este script monitora continuamente a quantidade de conexões `SYN_RECV` e emite um alerta quando o limite é ultrapassado.

## Dependências

- `ss` (`iproute2`, disponível por padrão na maioria das distros)

## Configuração

| Variável | Padrão | Descrição |
|---|---|---|
| `THRESHOLD` | `20` | Quantidade de SYN_RECV para disparar alerta |
| `COOLDOWN` | `2` | Segundos entre cada verificação |
| `LOG_FILE` | `/var/log/dos-detection.log` | Caminho do arquivo de log |

## Uso

```bash
sudo ./synflood-monitor.sh
```

## Limitações

- Não bloqueia IPs automaticamente por agora.
