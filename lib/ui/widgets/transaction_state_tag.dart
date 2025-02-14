import 'package:flutter/widgets.dart';
import 'package:natrium_wallet/appstate_container.dart';
import 'package:natrium_wallet/localization.dart';
import 'package:natrium_wallet/styles.dart';

enum TransactionStateOptions { UNCONFIRMED, CONFIRMED }

class TransactionStateTag extends StatelessWidget {
  final TransactionStateOptions transactionState;

  TransactionStateTag({Key key, this.transactionState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
      child: Text(
        this.transactionState == TransactionStateOptions.UNCONFIRMED
            ? AppLocalization.of(context).unconfirmed
            : "tag",
        style: AppStyles.tagText(context),
      ),
      decoration: BoxDecoration(
        color: StateContainer.of(context).curTheme.text10,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
