import functions_framework
from hello.secret import WEBHOOK_URL
from discordwebhook import Discord


@functions_framework.cloud_event
def subscribe(cloud_event):
    discord = Discord(url=WEBHOOK_URL)
    discord.post(content="hello!")


def main():
    subscribe(None)


if __name__ == "__main__":
    main()
