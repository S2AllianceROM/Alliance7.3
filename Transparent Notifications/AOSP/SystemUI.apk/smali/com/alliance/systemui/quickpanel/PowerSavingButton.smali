.class public Lcom/alliance/systemui/quickpanel/PowerSavingButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "PowerSavingButton.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "psm_switch"

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->OBSERVED_URIS:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "togglePowerSaving"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private getMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    iget-object v3, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 28
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "psm_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "psm_switch"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x509001c

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PSM_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->getMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->setMode(Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->getMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x5020077

    iput v0, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mIcon:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mState:I

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const v0, 0x5020076

    iput v0, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mIcon:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/systemui/quickpanel/PowerSavingButton;->mState:I

    goto :goto_0
.end method
