import eland as ed
import pandas as pd

from connection import es_client, index


def main():
    df = pd.read_csv(
        'tweets.csv',
    )

    ed.pandas_to_eland(
        pd_df=df,
        es_client=es_client,
        es_dest_index=index,
        es_if_exists="replace",
    )


if __name__ == '__main__':
    main()
