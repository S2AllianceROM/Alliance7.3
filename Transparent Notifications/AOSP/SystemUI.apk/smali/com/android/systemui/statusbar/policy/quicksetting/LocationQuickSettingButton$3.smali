.class Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;
.super Ljava/lang/Object;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 180
    const-string v0, "STATUSBAR-LocationQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPositiveButton onClick()...value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;->val$value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;->val$value:Z

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V

    .line 182
    return-void
.end method
